package luxe;

import luxe.Core;
import haxe.Timer;

class Timer {
    

    @:noCompletion public var core : Core;
    

    @:noCompletion public function new( _core:Core ) { 
        core = _core; 
    } //new

    @:noCompletion public function init() {
        core._debug(':: luxe :: \t Timer Initialized.');
    } //init

    @:noCompletion public function destroy() {
        core._debug(':: luxe :: \t Timer shut down.');
    } //destroy

    @:noCompletion public function process() {
        
    } //process

    public function schedule( _time_in_seconds:Float, _on_time:Void->Void, ?repeat:Bool = false ) : haxe.Timer {

        var t = new haxe.Timer( Std.int(_time_in_seconds * 1000));

        t.run = function () {
            if(!repeat) t.stop ();
            _on_time();
        };
        
        return t;

    } //schedule


} //Timer