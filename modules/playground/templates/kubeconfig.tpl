apiVersion: v1
kind: Config
preferences:
  colors: true
current-context: playground
contexts:
- context:
    cluster: ${cluster_name}
    namespace: default
    user: ${user_name}
  name: polkadot-deployer
clusters:
- cluster:
    server: https://${endpoint}
    certificate-authority-data: ${cluster_ca}
  name: ${cluster_name}
users:
- name: ${user_name}
  user:
    password: ${user_password}
    username: ${user_name}
    client-certificate-data: ${client_cert}
    client-key-data: ${client_cert_key}
