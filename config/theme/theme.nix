{lib, ...}:

{
  #https://github.com/tinted-theming/home/blob/main/styling.md
  theme = mkOption {
    description = "base16 theme";
    type = 
      with types;
      submodule {
        base00 = mkOption { type = str; description = "Default Background"; };
        base01 = mkOption { type = str; description = "Lighter Background (Status Bars)"; };
        base02 = mkOption { type = str; description = "Selection Background"; };
        base03 = mkOption { type = str; description = "Comments, Invisibles, Line highlighting"; };
        base04 = mkOption { type = str; description = "Dark Foreground (Status Bars)"; };
        base05 = mkOption { type = str; description = "Default Foreground, Caret, Delimiters, Operators"; };
        base06 = mkOption { type = str; description = "Light Foreground"; };
        base07 = mkOption { type = str; description = "The Lightest Foreground"; };
        base08 = mkOption { type = str; description = "Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted"; };
        base09 = mkOption { type = str; description = "Integers, Boolean, Constants, XML Attributes, Markup Link Url"; };
        base0A = mkOption { type = str; description = "Classes, Markup Bold, Search Text Background"; };
        base0B = mkOption { type = str; description = "Strings, Inherited Class, Markup Code, Diff Inserted"; };
        base0C = mkOption { type = str; description = "Support, Regular Expressions, Escape Characters, Markup Quotes"; };
        base0D = mkOption { type = str; description = "Functions, Methods, Attribute IDs, Headings"; };
        base0E = mkOption { type = str; description = "Keywords, Storage, Selector, Markup Italic, Diff Changed"; };
        base0F = mkOption { type = str; description = "Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>"; };
      }
  };
}
