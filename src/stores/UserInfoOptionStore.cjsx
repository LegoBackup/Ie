Reflux = require("reflux")

Option = require("stores/Option.cjsx")
opt    = require("stores/OptionTypes.cjsx")

CONSTANTS = require("constants.cjsx")
LOCALES   = CONSTANTS.LOCALES
TIMEZONES = CONSTANTS.TIMEZONES

UserInfoOptionStore = Option.createStore
    name: "UserInfoOptionStore"

    options: {
        name:       "Unknown"
        locale:     "en-US"
        timezone:   "EST"
    }

    optionTypes: {
        name:     opt.string
        locale:   opt.enumerated(LOCALES)
        timezone: opt.enumerated(TIMEZONES)
    }

module.exports = UserInfoOptionStore
