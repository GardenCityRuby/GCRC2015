require 'yaml'

# noinspection RubyStringKeysInHashInspection
def reformat_talks
  talks = YAML.load(File.open('_data/program.yaml'))

  new_format_talks = talks.map { |source|
    wanted_keys   = %w{type title description time}
    unwanted_keys = %w{name twitter email} # speaker_ everything

    talk = wanted_keys.reduce({}) { |t, key|
      t[key] = source[key]
      t
    }

    speaker          = unwanted_keys.reduce({}) do |speakers, key|
      speakers[key] = source["speaker_#{key}"]
      speakers
    end


    talk['speakers'] = [speaker] unless speaker.values.all? { |v| v.nil? }
    talk
  }

  File.open('_data/program.yml', 'wb') { |f| f.puts YAML.dump(new_format_talks) }
end
