package unityengine;

@:native("UnityEngine.ContextMenu") @:final
extern class ContextMenu extends dotnet.system.Attribute {
  public var menuItem(default,never) : String;

  public function new(name:String) : Void;
}

