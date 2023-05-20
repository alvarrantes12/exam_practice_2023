module ComediansHelper
    def level
        Comedian.levels.keys.map do |level|
            [t("activerecord.attributes.comedian.types_level.#{level}"), level]
        end
    end
end