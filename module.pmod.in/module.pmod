constant __author = "Foo Bar <foo@bar.com>";
constant __version = "1.0";

// if necessary, inherit the C language module here.
inherit Public.System.___FSEvents;

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
