
object m;

void cb(mixed ... args)
{
werror("%O\n", args);
}

int main()
{

 m = module.EventStream(({"/Users/hww3/devel"}), 3.0, module.kFSEventStreamEventIdSinceNow, module.kFSEventStreamCreateFlagNone);
m->callback_func = (cb); 
 m->add_backend_runloop();         
m->start();
werror("m->callback_func: %O\n", m->callback_func);
 return -1;
}
