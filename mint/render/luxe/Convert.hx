package mint.render.luxe;

import mint.types.Types;

import luxe.Rectangle;
import luxe.Vector;
import luxe.Text;
import luxe.Input;

class Convert {

        /** from mint.TextAlign to luxe.Text.TextAlign */
    public static function text_align( _align:mint.types.TextAlign ) : TextAlign {

        return switch(_align) {
            case mint.types.TextAlign.right:  TextAlign.right;
            case mint.types.TextAlign.center: TextAlign.center;
            case mint.types.TextAlign.top:    TextAlign.top;
            case mint.types.TextAlign.bottom: TextAlign.bottom;
            case _:                           TextAlign.left;
        }

    } //text_align

        /** from mint.Control bounds to luxe.Rectangle */
    public static function bounds( _control:Control, ?_scale:Float=1.0 ) : Rectangle {

        if(_control == null) return null;
				//var r = new Rectangle(_control.x * _scale, _control.y * _scale, _control.w * _scale, _control.h * _scale);
				var r = new Rectangle();
				var p1 = Luxe.camera.view.world_point_to_screen(new Vector(_control.x * _scale, _control.y * _scale));
				var p2 = Luxe.camera.view.world_point_to_screen(new Vector(_control.w * _scale, _control.h * _scale));
				r.x = p1.x;
				r.y = p1.y;
				r.w = p2.x;
				r.h = p2.y;
        return r;

    } //bounds

        /** from luxe.Input.InteractState to mint.InteractState */
    public static function interact_state( _state:InteractState ) : mint.types.InteractState {

        return switch(_state) {
            case InteractState.unknown: mint.types.InteractState.unknown;
            case InteractState.none:    mint.types.InteractState.none;
            case InteractState.down:    mint.types.InteractState.down;
            case InteractState.up:      mint.types.InteractState.up;
            case InteractState.move:    mint.types.InteractState.move;
            case InteractState.wheel:   mint.types.InteractState.wheel;
            case InteractState.axis:    mint.types.InteractState.axis;
        } //state

    } //interact_state

        /** from luxe.Input.MouseButton to mint.MouseButton */
    public static function mouse_button( _button:MouseButton ) : mint.types.MouseButton {

        return switch(_button) {
            case MouseButton.none:      mint.types.MouseButton.none;
            case MouseButton.left:      mint.types.MouseButton.left;
            case MouseButton.middle:    mint.types.MouseButton.middle;
            case MouseButton.right:     mint.types.MouseButton.right;
            case MouseButton.extra1:    mint.types.MouseButton.extra1;
            case MouseButton.extra2:    mint.types.MouseButton.extra2;
        } //state

    } //mouse_button

        /** from luxe.Input.Key to mint.KeyCode */
    public static function key_code( _keycode:Int ) : mint.types.KeyCode {

        return switch(_keycode) {

            case Key.left:      mint.types.KeyCode.left;
            case Key.right:     mint.types.KeyCode.right;
            case Key.up:        mint.types.KeyCode.up;
            case Key.down:      mint.types.KeyCode.down;
            case Key.backspace: mint.types.KeyCode.backspace;
            case Key.delete:    mint.types.KeyCode.delete;
            case Key.tab:       mint.types.KeyCode.tab;
            case Key.enter:     mint.types.KeyCode.enter;
            case Key.escape:    mint.types.KeyCode.escape;
            case _:             mint.types.KeyCode.unknown;

        } //_keycode

    } //key_code

    public static function text_event_type( _type:TextEventType ) : mint.types.TextEventType {

        return switch(_type) {
            case luxe.TextEventType.unknown: mint.types.TextEventType.unknown;
            case luxe.TextEventType.edit:    mint.types.TextEventType.edit;
            case luxe.TextEventType.input:   mint.types.TextEventType.input;
        }

    } //text_event_type

        /** from luxe.Input.ModState to mint.ModState */
    public static function mod_state( _mod:ModState ) : mint.types.ModState {

        return {
            none:   _mod.none,
            lshift: _mod.lshift,
            rshift: _mod.rshift,
            lctrl:  _mod.lctrl,
            rctrl:  _mod.rctrl,
            lalt:   _mod.lalt,
            ralt:   _mod.ralt,
            lmeta:  _mod.lmeta,
            rmeta:  _mod.rmeta,
            num:    _mod.num,
            caps:   _mod.caps,
            mode:   _mod.mode,
            ctrl:   _mod.ctrl,
            shift:  _mod.shift,
            alt:    _mod.alt,
            meta:   _mod.meta,
        };

    } //mod_state

        /** from luxe.Input.MouseEvent to mint.MouseEvent */
    public static function mouse_event( _event:MouseEvent, ?_scale:Float=1.0, ?view:phoenix.Camera ) : mint.types.MouseEvent {

        var _pos = new Vector(_event.x, _event.y);

        if(view != null) {
            _pos = view.screen_point_to_world(_pos);
        }

        return {
            state       : interact_state(_event.state),
            button      : mouse_button(_event.button),
            timestamp   : _event.timestamp,
            x           : Std.int(_pos.x/_scale),
            y           : Std.int(_pos.y/_scale),
            xrel        : Std.int(_event.x_rel/_scale),
            yrel        : Std.int(_event.y_rel/_scale),
            bubble      : true
        };

    } //mouse_event

        /** from luxe.Input.KeyEvent to mint.KeyEvent */
    public static function key_event( _event:KeyEvent ) : mint.types.KeyEvent {

        return {
            state       : interact_state(_event.state),
            keycode     : _event.keycode,
            timestamp   : _event.timestamp,
            key         : key_code(_event.keycode),
            mod         : mod_state(_event.mod),
            bubble      : true
        };

    } //key_event

        /** from luxe.Input.TextEvent to mint.TextEvent */
    public static function text_event( _event:TextEvent ) : mint.types.TextEvent {

        return {
            text      : _event.text,
            type      : text_event_type(_event.type),
            timestamp : _event.timestamp,
            start     : _event.start,
            length    : _event.length,
            bubble    : true
        };

    } //mouse_event

} //Convert
