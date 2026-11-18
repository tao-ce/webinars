from pygments.style import Style
from pygments.token import Token, Comment, Keyword, Name, String, \
     Error, Generic, Number, Operator

class TAOColors():
    COLORS = {
        "red": (186,32,39),
        "darkred": (241,210,212),
        "blue": (32,131,186),
        "yellow": (186,183,32),
        "brown": (101, 51, 53),
        "gray": (39,52,59),
        "lightgray": (138,113,116),
        "green": (32,186,71),
        "darkgreen": (51,101,64),
        "magenta": (182,32,186),
        "cyan": (32,186,158),
    }

    hex = lambda n: "#{:06x}".format(
        (TAOColors.COLORS[n][0] <<16)
        + (TAOColors.COLORS[n][1] <<8)
        + (TAOColors.COLORS[n][2]))

    def get(n):
        return TAOColors.hex(n)

    def bold(n):
        return 'bold '+TAOColors.hex(n)

    def italic(n):
        return 'italic '+TAOColors.hex(n)


class TAOLightStyle(Style):
    styles = {
        Token:                  '',
        Comment:                TAOColors.italic("gray"),
        Keyword:                TAOColors.bold("brown"),
        Name:                   TAOColors.get("blue"),
        Name.Class:             TAOColors.bold("blue"),
        Name.Function:          TAOColors.get("blue"),
        String:                 TAOColors.italic("darkgreen"),
    }

class TAODarkStyle(Style):
    styles = {
        Token:                  '',
        Comment:                TAOColors.italic("lightgray"),
        Keyword:                TAOColors.bold("yellow"),
        Name:                   TAOColors.get("blue"),
        Name.Class:             TAOColors.bold("blue"),
        Name.Function:          TAOColors.get("blue"),
        String:                 TAOColors.italic("green"),
    }

