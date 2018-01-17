require 'arduino_ci/arduino_cmd'

module ArduinoCI

  # Implementation of OSX commands
  class ArduinoCmdOSX < ArduinoCmd
    flag :get_pref,        "--get-pref"
    flag :set_pref,        "--pref"
    flag :save_prefs,      "--save-prefs"
    flag :use_board,       "--board"
    flag :install_boards,  "--install-boards"
    flag :install_library, "--install-library"
    flag :verify,          "--verify"

    # run the arduino command
    def run(*args, **kwargs)
      full_args = @base_cmd + args
      Host.run(*full_args, **kwargs)
    end

    def _lib_dir
      File.join(ENV['HOME'], "Documents", "Arduino", "libraries")
    end

  end

end