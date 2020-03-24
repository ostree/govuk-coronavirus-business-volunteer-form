# frozen_string_literal: true

require "spec_helper"

RSpec.describe CoronavirusForm::ManufacturerCheckController, type: :controller do
  let(:current_template) { "coronavirus_form/manufacturer_check" }
  let(:session_key) { :manufacturer_check }

  describe "GET show" do
    it "renders the form when first question answered" do
      session["medical_equipment"] = "Yes"
      get :show
      expect(response).to render_template(current_template)
    end

    it "redirects to first question when first question not answered" do
      get :show
      expect(response).to redirect_to({
        controller: "medical_equipment",
        action: "show",
      })
    end
  end

  describe "POST submit" do
    let(:selected) { %w[Distributor Manufacturer] }

    it "sets session variables" do
      post :submit, params: { manufacturer_check: selected }

      expect(session[session_key]).to eq selected
    end

    it "redirects to next step" do
      post :submit, params: { manufacturer_check: selected }

      expect(response).to redirect_to(medical_equipment_type_path)
    end

    it "redirects to check your answers if check your answers already seen" do
      session[:check_answers_seen] = true
      post :submit, params: { manufacturer_check: selected }

      expect(response).to redirect_to(check_your_answers_path)
    end

    it "validates any option is chosen" do
      post :submit, params: { manufacturer_check: [] }

      expect(response).to render_template(current_template)
    end

    it "validates a valid option is chosen" do
      post :submit, params: {
        manufacturer_check: [
          "<script></script",
          "invalid option",
          "Medical equipment",
        ],
      }

      expect(response).to render_template(current_template)
    end
  end
end
