public class Application : Gtk.Application {
    public Application () {
        Object (
            application_id: "com.github.sven-dibowski.focus",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title = "Focus"
        };

        main_window.show_all ();
    }

    public static int main (string[] args) {
        return new Application ().run (args);
    }
}