module FormResponseHelper
  def valid_data
    {
      accommodation: I18n.t("coronavirus_form.questions.accommodation.options").map { |_, item| item[:label] }.sample,
      rooms_number: "40",
      accommodation_cost: I18n.t("coronavirus_form.how_much_charge.options").map { |_, item| item[:label] }.sample,
      offer_transport: I18n.t("coronavirus_form.questions.offer_transport.options").map { |_, item| item[:label] }.sample,
      transport_type: I18n.t("coronavirus_form.questions.transport_type.options").map { |_, item| item[:label] },
      transport_description: "10 trucks",
      transport_cost: I18n.t("coronavirus_form.how_much_charge.options").map { |_, item| item[:label] }.sample,
      offer_space: I18n.t("coronavirus_form.questions.offer_space.options").map { |_, item| item[:label] }.sample,
      offer_space_type: I18n.t("coronavirus_form.questions.offer_space_type.options").map { |_, item| item[:label] },
      warehouse_space_description: "5000",
      office_space_description: "6000",
      general_space_description: "Multiple units.",
      offer_space_type_other: "10000",
      space_cost: I18n.t("coronavirus_form.how_much_charge.options").map { |_, item| item[:label] }.sample,
      offer_staff: I18n.t("coronavirus_form.questions.offer_staff.options").map { |_, item| item[:label] }.sample,
      offer_staff_type: I18n.t("coronavirus_form.questions.offer_staff_type.offer_staff_type.options").map { |_, item| item[:label] },
      offer_staff_number: {
        cleaners_number: 10,
        developers_number: 20,
        medical_staff_number: 30,
        office_staff_number: 40,
        security_staff_number: 50,
        trainers_number: 60,
        translators_number: 70,
        other_staff_number: 80,
      },
      offer_staff_description: "Some staff available.",
      offer_staff_charge: I18n.t("coronavirus_form.questions.offer_staff_type.offer_staff_charge.options").map { |_, item| item[:label] }.sample,
      expert_advice_type: I18n.t("coronavirus_form.questions.expert_advice_type.options").map { |_, item| item[:label] },
      expert_advice_type_other: "Life coach",
      construction_services: I18n.t("coronavirus_form.questions.construction_services.options").map { |_, item| item[:label] },
      construction_services_other: "Build all the things",
      construction_cost: I18n.t("coronavirus_form.how_much_charge.options").map { |_, item| item[:label] }.sample,
      it_services: I18n.t("coronavirus_form.questions.it_services.options").map { |_, item| item[:label] },
      it_services_other: "Supply all the things",
      it_cost: I18n.t("coronavirus_form.how_much_charge.options").map { |_, item| item[:label] }.sample,
      offer_care: I18n.t("coronavirus_form.questions.offer_care.options").map { |_, item| item[:label] }.sample,
      offer_care_type: I18n.t("coronavirus_form.questions.offer_care_qualifications.offer_care_type.options").map { |_, item| item[:label] },
      offer_care_qualifications: I18n.t("coronavirus_form.questions.offer_care_qualifications.care_qualifications.options").map { |_, item| item[:label] },
      offer_care_qualifications_type: "Nursing degree",
      care_cost: I18n.t("coronavirus_form.how_much_charge.options").map { |_, item| item[:label] }.sample,
      offer_other_support: "All the support, all the time!",
      business_details: {
        company_name: "Mandalore Inc.",
        company_is_uk_registered: I18n.t("coronavirus_form.questions.business_details.company_is_uk_registered.options.united_kingdom.label"),
        company_number: "12345678",
        company_size: I18n.t("coronavirus_form.questions.business_details.company_size.options.under_50_people.label"),
        company_location: I18n.t("coronavirus_form.questions.business_details.company_location.options.united_kingdom.label"),
        company_postcode: "E1 8QS",
      },
      contact_details: {
        contact_name: "Satine Kryze",
        role: "Leader",
        phone_number: "0123456789",
        email: "me@example.com",
      },
      location: I18n.t("coronavirus_form.questions.location.options").map { |_, item| item[:label] },
    }
  end
end
