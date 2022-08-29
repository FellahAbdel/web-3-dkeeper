export const idlFactory = ({ IDL }) => {
  const note = IDL.Record({ 'title' : IDL.Text, 'content' : IDL.Text });
  return IDL.Service({
    'createNote' : IDL.Func([IDL.Text, IDL.Text], [], ['oneway']),
    'deleteNote' : IDL.Func([IDL.Nat], [], ['oneway']),
    'readNotes' : IDL.Func([], [IDL.Vec(note)], ['query']),
  });
};
export const init = ({ IDL }) => { return []; };
