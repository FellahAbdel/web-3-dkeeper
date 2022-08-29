import List "mo:base/List";
import Debug "mo:base/Debug";

actor DKeeper {
    public type  note = {
        title : Text;
        content : Text;
    };

    stable var notes : List.List<note> = List.nil<note>();

    public func createNote(newTitle : Text, newContent : Text){
        let newNote : note = {
            title = newTitle;
            content = newContent;
        };

        notes := List.push(newNote, notes);
        Debug.print(debug_show(notes));
    };

    public query func readNotes() : async [note] {
        return List.toArray(notes);
    };

    public func deleteNote(id : Nat){
        notes := List.append(List.take(notes, id), List.drop(notes, id+1));
    }
}
