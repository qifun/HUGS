package unityengine;

@:native("UnityEngine.Input") @:final
extern class Input {
  public static var compensateSensors : Bool;
  @:skipReflection public static var isGyroAvailable(default,never) : Bool;
  @:skipReflection public static var gyro(default,never) : Gyroscope;
  @:skipReflection public static var mousePosition(default,never) : Vector3;
  @:skipReflection public static var anyKey(default,never) : Bool;
  @:skipReflection public static var anyKeyDown(default,never) : Bool;
  @:skipReflection public static var inputString(default,never) : String;
  @:skipReflection public static var acceleration(default,never) : Vector3;
  @:skipReflection public static var accelerationEvents(default,never) : cs.NativeArray<AccelerationEvent>;
  @:skipReflection public static var accelerationEventCount(default,never) : Int;
  @:skipReflection public static var touches(default,never) : cs.NativeArray<Touch>;
  @:skipReflection public static var touchCount(default,never) : Int;
  public static var eatKeyPressOnTextFieldFocus : Bool;
  public static var multiTouchEnabled : Bool;
  @:skipReflection public static var location(default,never) : LocationService;
  @:skipReflection public static var compass(default,never) : Compass;
  @:skipReflection public static var deviceOrientation(default,never) : DeviceOrientation;
  public static var imeCompositionMode : IMECompositionMode;
  @:skipReflection public static var compositionString(default,never) : String;
  public static var compositionCursorPos : Vector2;
  @:skipReflection public static var imeIsSelected(default,never) : Bool;

  public function new() : Void;

  public static function GetAccelerationEvent(index:Int) : AccelerationEvent;

  public static function GetAxis(axisName:String) : Float;

  public static function GetAxisRaw(axisName:String) : Float;

  public static function GetButton(buttonName:String) : Bool;

  public static function GetButtonDown(buttonName:String) : Bool;

  public static function GetButtonUp(buttonName:String) : Bool;

  public static function GetJoystickNames() : cs.NativeArray<String>;

  public static function GetKey(name:String) : Bool;

  public static function GetKeyDown(name:String) : Bool;

  public static function GetKeyUp(name:String) : Bool;

  public static function GetMouseButton(button:Int) : Bool;

  public static function GetMouseButtonDown(button:Int) : Bool;

  public static function GetMouseButtonUp(button:Int) : Bool;

  public static function GetPosition(deviceID:Int) : Vector3;

  public static function GetRotation(deviceID:Int) : Quaternion;

  public static function GetTouch(index:Int) : Touch;

  public static function ResetInputAxes() : Void;
}
