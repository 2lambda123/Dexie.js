import { DBSyncedObject } from "./DBSyncedObject.js";

export interface DBRealm extends DBSyncedObject {
  name: string;
  represents?: string;
}
