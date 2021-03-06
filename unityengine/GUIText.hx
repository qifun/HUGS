package unityengine;

@:native("UnityEngine.GUIText") @:final
extern class GUIText extends GUIElement {
  public var text : String;
  public var material : Material;
  public var pixelOffset : Vector2;
  public var font : Font;
  public var alignment : TextAlignment;
  public var anchor : TextAnchor;
  public var lineSpacing : Single;
  public var tabSize : Single;
  public var fontSize : Int;
  public var fontStyle : FontStyle;
  public var richText : Bool;
  public var color : Color;

  public function new() : Void;
}

