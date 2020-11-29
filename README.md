# GLUSTERFS PROMETHEUS EXPORTER
## USAGE
1. `docker build -t glusterfs-exporter .`
2. `docker run --restart always -itd  -p "9713:9713" --net=host glusterfs-exporter `
3. Verify:
   `curl http://host_IP:9713/metrics`
