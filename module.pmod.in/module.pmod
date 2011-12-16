constant __author = "Bill Welliver <bill@welliver.org>";
constant __version = "1.0";

// if necessary, inherit the C language module here.
inherit Public.System.___FSEvents;

//!  describe the event flags associated with an event.
//!
//! @returns
//!   a string describing the flags set.
string describe_event_flag(int mask) {
        array(string) list = ({});
        
        foreach (indices(this_program);; string name) {
                if (has_prefix(name, "kFSEventStreamEventFlag")) {
                        int value = `[](this_program, name);

                        if (value & mask) list += ({ name });
                }
        }

        return list * "|";
}
