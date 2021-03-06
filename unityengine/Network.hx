package unityengine;

@:native("UnityEngine.Network") @:final
extern class Network extends dotnet.system.Object {
  public static var incomingPassword : String;
  public static var logLevel : NetworkLogLevel;
  public static var connections(default,never) : cs.NativeArray<NetworkPlayer>;
  public static var player(default,never) : NetworkPlayer;
  public static var isClient(default,never) : Bool;
  public static var isServer(default,never) : Bool;
  public static var peerType(default,never) : NetworkPeerType;
  public static var sendRate : Single;
  public static var isMessageQueueRunning : Bool;
  public static var time(default,never) : Float;
  public static var minimumAllocatableViewIDs : Int;
  public static var useNat : Bool;
  public static var natFacilitatorIP : String;
  public static var natFacilitatorPort : Int;
  public static var connectionTesterIP : String;
  public static var connectionTesterPort : Int;
  public static var maxConnections : Int;
  public static var proxyIP : String;
  public static var proxyPort : Int;
  public static var useProxy : Bool;
  public static var proxyPassword : String;

  public static function AllocateViewID() : NetworkViewID;

  public static function CloseConnection(target:NetworkPlayer, sendDisconnectionNotification:Bool) : Void;

  @:overload(function(IP:String, remotePort:Int) : NetworkConnectionError {})
  @:overload(function(IP:String, remotePort:Int, password:String) : NetworkConnectionError {})
  @:overload(function(IPs:cs.NativeArray<String>, remotePort:Int) : NetworkConnectionError {})
  @:overload(function(IPs:cs.NativeArray<String>, remotePort:Int, password:String) : NetworkConnectionError {})
  @:overload(function(GUID:String) : NetworkConnectionError {})
  @:overload(function(GUID:String, password:String) : NetworkConnectionError {})
  @:overload(function(hostData:HostData) : NetworkConnectionError {})
  public static function Connect(hostData:HostData, password:String) : NetworkConnectionError;

  public function new() : Void;

  @:overload(function(viewID:NetworkViewID) : Void {})
  public static function Destroy(gameObject:GameObject) : Void;

  public static function DestroyPlayerObjects(playerID:NetworkPlayer) : Void;

  @:overload(function(timeout:Int) : Void {})
  public static function Disconnect() : Void;

  public static function GetAveragePing(player:NetworkPlayer) : Int;

  public static function GetLastPing(player:NetworkPlayer) : Int;

  public static function HavePublicAddress() : Bool;

  public static function InitializeSecurity() : Void;

  @:overload(function(connections:Int, listenPort:Int, useNat:Bool) : NetworkConnectionError {})
  public static function InitializeServer(connections:Int, listenPort:Int) : NetworkConnectionError;

  public static function Instantiate(prefab:Object, position:Vector3, rotation:Quaternion, group:Int) : Object;

  @:overload(function(playerID:NetworkPlayer) : Void {})
  @:overload(function(playerID:NetworkPlayer, group:Int) : Void {})
  public static function RemoveRPCs(viewID:NetworkViewID) : Void;

  public static function RemoveRPCsInGroup(group:Int) : Void;

  public static function SetLevelPrefix(prefix:Int) : Void;

  public static function SetReceivingEnabled(player:NetworkPlayer, group:Int, enabled:Bool) : Void;

  @:overload(function(group:Int, enabled:Bool) : Void {})
  public static function SetSendingEnabled(player:NetworkPlayer, group:Int, enabled:Bool) : Void;

  @:overload(function(forceTest:Bool) : ConnectionTesterStatus {})
  public static function TestConnection() : ConnectionTesterStatus;

  @:overload(function(forceTest:Bool) : ConnectionTesterStatus {})
  public static function TestConnectionNAT() : ConnectionTesterStatus;
}

