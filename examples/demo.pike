
object m;

import Public.System;

void cb(string path, int flags, int event_id)
{
werror("%s => %s, %d\n", path, FSEvents.describe_event_flag(flags), event_id);
}

int main()
{
 FSEvents.add_backend_runloop();         

 m = FSEvents.EventStream(({}), 3.0, FSEvents.kFSEventStreamEventIdSinceNow, FSEvents.kFSEventStreamCreateFlagNone);
// m = FSEvents.EventStream(({"/Users/hww3/Music/iTunes/iTunes Media/Music"}), 3.0, FSEvents.kFSEventStreamEventIdSinceNow, FSEvents.kFSEventStreamCreateFlagNone);
 m->add_path("/Users/hww3/Music/iTunes/iTunes Media/Music");
 m->callback_func = (cb); 
 m->start();
 return -1;
}
