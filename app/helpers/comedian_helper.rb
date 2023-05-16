module ComedianHelper

    def levels
      Comedian.levels.keys.map do |level|
        [t("activerecord.attributes.comedian.levels.#{level}"), level]
      end
    end
  end