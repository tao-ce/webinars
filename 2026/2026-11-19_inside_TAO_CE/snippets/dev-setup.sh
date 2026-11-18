# Apply changes and regenerate config
task dev:setup
# Restart EM services
systemctl restart "tao-ce.env*"
