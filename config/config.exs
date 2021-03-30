import Config

config :k8s,
  clusters: %{
    # `default` here must match `cluster_name` below
    minikube: %{
      conn: "~/.kube/config"
    }
  }

config :bonny,
  # Add each CRD Controller module for this operator to load here
  # Defaults to none. This *must* be set.
  controllers: [],

  # K8s.Cluster to use, defaults to :default
  cluster_name: :minikube,

  # The namespace to watch for Namespaced CRDs.
  # Defaults to "default". `:all` for all namespaces
  # Also configurable via environment variable `BONNY_POD_NAMESPACE`
  namespace: "default",

  # Set the Kubernetes API group for this operator.
  # This can be overwritten using the @group attribute of a controller
  group: "elixir-kubernetes.esl-hackathon.com",

  # Name must only consist of only lowercase letters and hyphens.
  # Defaults to hyphenated mix app name
  operator_name: "elixir-kubernetes",

  # Name must only consist of only lowercase letters and hyphens.
  # Defaults to hyphenated mix app name
  service_account_name: "elixir-kubernetes"
