# Kubernetes Resource Usage Plugin

## Purpose
The Kubernetes Resource Usage Plugin is a `kubectl` plugin designed to retrieve resource usage statistics (CPU and memory) for pods in a specified namespace.

## Usage
### Installation
1. Rename script from kubeplugin to kubectl-kubeplugin
3. Ensure that the script file `kubectl-kubeplugin` is executable and located in a directory included in your system's PATH.
2. You can also move the script file to a directory like `/usr/local/bin` to make it accessible system-wide:

    ```bash
    sudo mv kubectl-kubeplugin /usr/local/bin/kubectl-kubeplugin
    sudo chmod +x /usr/local/bin/kubectl-kubeplugin
    ```

3. The plugin is now ready for use as `kubectl kubeplugin`.

### Syntax
```bash
kubectl kubeplugin <resource_type> <namespace>