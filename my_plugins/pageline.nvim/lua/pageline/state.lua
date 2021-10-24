local state = {
  prefs = {
    background = "#222429",

    tab = {
      background = "#282c34",
      text = "#999999",
      padding = 0,

      separator = {
        left = {
          character = "",
          background = "#282c34",
          text = "#ff0000"
        },

        right = {
          character = "",
          background = "#282c34",
          text = "#ff0000"
        }
      },

      modified = {
        character = "",
        background = "#282c34",
        text = "#999999"
      }
    },

    current = {
      background = "#61afef",
      text = "#282c34",
      padding = 0,

      separator = {
        left = {
          character = "",
          background = "#61afef",
          text = "#00ff00"
        },

        right = {
          character = "",
          background = "#282c34",
          text = "#00ff00"
        }
      },

      modified = {
        character = "",
        background = "#61afef",
        text = "#282c34"
      }
    }
  }
}

return state
