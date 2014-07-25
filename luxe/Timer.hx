package luxe;

import luxe.Core;
import haxe.Timer;
import luxe.Log._debug;

class Timer {


    @:noCompletion public var core : Core;


    @:noCompletion public function new( _core:Core ) {
        core = _core;
    } //new

    @:noCompletion public function init() {
        _debug('\t timer initialized.');
    } //init

    @:noCompletion public function destroy() {
        _debug('\t timer shut down.');
    } //destroy

    @:noCompletion public function process() {

    } //process

    public function schedule( _time_in_seconds:Float, _on_time:Void->Void, ?repeat:Bool = false ) : snow.utils.Timer {

        var t = new snow.utils.Timer( _time_in_seconds );

        t.run = function () {
            if(!repeat) t.stop ();
            _on_time();
        };

        return t;

    } //schedule


} //Timer