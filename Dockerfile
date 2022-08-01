FROM ipfs/kubo:latest
# Mount initialization scripts to container-init.d. 
# These are executed sequentially and in lexicographic order, 
# after ipfs init is run and the swarm keys are copied (if the IPFS repo needs initialization), and before the IPFS daemon is started.
ADD ./config/ipfs/ipfs-config.sh /container-init.d/ipfs-config.sh
RUN chmod a+x /container-init.d/ipfs-config.sh
ENV LIBP2P_FORCE_PNET=1

