import List "mo:base/List";
import Debug "mo:base/Debug";
actor DKeeper {
    public type  note = {
        title : Text;
        content : Text;
    };

    var notes : List.List<note> = List.nil<note>();

    public func createNote(newTitle : Text, newContent : Text){
        let newNote : note = {
            title = newTitle;
            content = newContent;
        };

        notes := List.push(newNote, notes);
        Debug.print(debug_show(notes));
    }
}
