export type TaintVisNode = {
  uniqueID: string;
  label: string;
  tainted: boolean;
  children: TaintVisNode[];
}

export function jsonToTaintVisNode(json: string) {
  console.log(json);

  // TODO: Build out TaintVisNode objects from the JSON, and associate them with the returned root
  const root: TaintVisNode = {
    uniqueID: '',
    label: '',
    tainted: false,
    children: []
  };

  return root;
}
