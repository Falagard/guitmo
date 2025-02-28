package ;

import haxe.ui.containers.VBox;
import haxe.ui.events.MouseEvent;
import openfl.filesystem.File;

@:build(haxe.ui.ComponentBuilder.build("assets/main-view.xml"))
class MainView extends VBox {
    public function new() {
        super();

        var rootDirs = File.getRootDirectories();

        for (i in 0...rootDirs.length) {
            trace(rootDirs[i].nativePath);
        }

        button1.onClick = function(e) {
            button1.text = "Thanks!";
        }
    }
    
    @:bind(button2, MouseEvent.CLICK)
    private function onMyButton(e:MouseEvent) {
        button2.text = "Thanks!";
    }
}