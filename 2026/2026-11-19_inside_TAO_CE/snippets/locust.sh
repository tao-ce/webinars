. ./.venv/bin/activate
locust \
    -H https://community.tao.internal \
    --load_profile 'Light (100u)' \
    --wait_time 'Fast (0.5-2s)' \
    --ramp_method normal --ramp_duration 30
