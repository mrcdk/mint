package phoenix;

import phoenix.Droppable;
import phoenix.ResourceManager;
	

enum ResourceType {
	unknown;
	texture;
	font;
	shader;
}

class Resource extends Droppable {
	
	public var manager : ResourceManager;
	public var type : ResourceType;
	public var id : String;
	public var persistent : Bool = false;

	public function new( _manager : ResourceManager, _type:ResourceType ) {
		manager = _manager == null ? Lab.resources : _manager;
		type = _type;

		manager.add( this );
	}

	public override function drop() {
		if(!dropped) {
			super.drop();
			manager.remove( this );
		}
	}

}