RSpec.describe "start" do
  describe "GET /start" do
    it "redirects to the first question" do
      get start_path
      expect(response).to redirect_to medical_equipment_path
    end
  end
end
