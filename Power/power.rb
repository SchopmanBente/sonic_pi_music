# Welcome to Sonic Pi
sample_one = :drum_heavy_kick
sample_two = :bass_trance_c
sample_three = :bass_voxy_hit_c
synth_one = :growl
synth_two = :dsaw
in_thread do
  loop do
    sample sample_one
    play 25, note: 50, release:0.10
    sleep 0.5
  end
end
in_thread do
  loop do
    use_synth synth_one
    play 40,note: 10,  release:0.5
    sleep 0.25
  end
end
in_thread do
  loop do
    sample sample_two
    play 60, note: 25, release:0.75
    sleep 0.5
    use_synth synth_two
    play 50, note:15, release:0.25
    sleep 0.25
  end
end
in_thread do
  loop do
    sample sample_three
    play 25, note: 20, release:0.20
    use_synth synth_one
    play 40,note: 10,  release:0.5
    sleep 0.25
  end
 end
  
  