timeToLive--;

if (timeToLive <= 0) {
    instance_destroy();
}