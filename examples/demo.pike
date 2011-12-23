
object m;

import Public.System;

void cb(string path, int flags, int event_id)
{
  werror("%s => %s, id=%d\n", path, FSEvents.describe_event_flag(flags), event_id);
}

int main(int argc, array(string argv)
{
   string dir = "/tmp";
   if(sizeof(argv))
    dir = argv[1];

   werror("watching %O for changes...\n", dir);

   m = FSEvents.EventStream(({}), 3.0, FSEvents.kFSEventStreamEventIdSinceNow, 
    FSEvents.kFSEventStreamCreateFlagNone);

   m->add_path(dir);
   m->callback_func = (cb); 
   m->start();

   return -1;
}
