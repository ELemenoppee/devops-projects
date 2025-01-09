# Transferring Docker Overlay2

To mount the overlay2 storage driver to another storage location, you can move the existing overlay2 directory (typically located in /var/lib/docker) to the new storage location and configure Docker to use the new path. Here's how you can do it.

## Steps

### 1- Stop the Docker Service

Run the following command to stop Docker:

```bash
sudo systemctl stop docker
```

### 2- Move the overlay2 Directory

Locate the current overlay2 directory. By default, it is in /var/lib/docker/overlay2.
Move the overlay2 directory to the new storage location (e.g., /mnt/newstorage):

```bash
sudo mv /var/lib/docker/overlay2 /mnt/newstorage/
```

### 3- Create a Symlink

Create a symbolic link form the new location back to the default Docker directory:

```bash
sudo ln -s /mnt/newstorage/overlay2 /var/lib/docker/overlay2
```

### 4- Change Docker's Storage Path

If you want Docker to use the new storage path directly (instead of a symlink), configure Docker to use the new path.

Edit the Docker daemon configuration file (typically /etc/docker/daemon.json):

```bash
sudo nano /etc/docker/daemon.json
```

Add or update the data-root configuration to point to the new storage location:

```bash
{
  "data-root": "/mnt/newstorage"
}
```

Save and exit the file.

### 5- Restart Docker

Start Docker again to apply the changes.

```bash
sudo systemctl daemon-reload
sudo systemctl start docker
```

### 6- Verify the Configuration

Check if Docker is now using the new storage location:

```bash
docker info | grep "Docker Root Dir"
```

The output should show the new storage path (e.g., /mnt/newstorage).

Run a test container:

```bash
docker run -it --rm ubuntu bash
```

Check if the container runs successfully and the data is stored in the correct directory.

## Notes

+ Ensure the new storage has sufficient space and proper permissions for Docker to operate.

+ If you're running Docker containers when you perform these steps, they will stop. You'll need to restart them after the process.
