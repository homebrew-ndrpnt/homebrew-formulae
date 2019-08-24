class Kubebuilder < Formula
  desc "SDK for building Kubernetes APIs using CRDs"
  homepage "https://book.kubebuilder.io"
  url "https://go.kubebuilder.io/dl/2.0.0-rc.0/darwin/amd64"
  sha256 "970c74143287731c60bb171a1c90f2fb18c99b5e989af38db0d5094b96ded02a"

  depends_on "etcd"
  depends_on "kubernetes-cli"
  depends_on "kustomize"

  def install
    bin.install "bin/kube-apiserver", "bin/kubebuilder"
  end

  test do
    kubebuilder_expected_output = "Development kit for building Kubernetes extensions and tools."
    kube_apiserver_expected_output = <<~EOS
      The Kubernetes API server validates and configures data
      for the api objects which include pods, services, replicationcontrollers, and
      others. The API Server services REST operations and provides the frontend to the
      cluster's shared state through which all other components interact.
    EOS

    kubebuilder_output = shell_output("#{bin}/kubebuilder 2>&1")
    apiserver_output = shell_output("#{bin}/kube-apiserver -h 2>&1")

    assert_match kubebuilder_expected_output, kubebuilder_output
    assert_match kube_apiserver_expected_output, apiserver_output
  end
end
