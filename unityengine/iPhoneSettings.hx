package unityengine;

@:native("UnityEngine.iPhoneSettings") @:final
extern class IPhoneSettings extends dotnet.system.Object {
  public static var screenOrientation : IPhoneScreenOrientation;
  public static var verticalOrientation : Bool;
  public static var screenCanDarken : Bool;
  public static var uniqueIdentifier(default,never) : String;
  public static var name(default,never) : String;
  public static var model(default,never) : String;
  public static var systemName(default,never) : String;
  public static var systemVersion(default,never) : String;
  public static var internetReachability(default,never) : IPhoneNetworkReachability;
  public static var generation(default,never) : IPhoneGeneration;
  public static var locationServiceStatus(default,never) : LocationServiceStatus;
  public static var locationServiceEnabledByUser(default,never) : Bool;

  public function new() : Void;

  @:overload(function(desiredAccuracyInMeters:Single, updateDistanceInMeters:Single) : Void {})
  @:overload(function(desiredAccuracyInMeters:Single) : Void {})
  public static function StartLocationServiceUpdates() : Void;

  public static function StopLocationServiceUpdates() : Void;
}

