echo "Deployment info"
echo
kubectl get deployments
echo
kubectl describe deployment sba-deployment
echo
kubectl get deployment sba-deployment -o yaml
echo
echo
echo
echo "Pod Info"
echo
kubectl get pods
echo
kubectl get pods -o wide
echo
kubectl describe pods
echo
echo
echo
echo "Sercive Info"
echo
kubectl get services
echo
kubectl describe service sba-svc
echo
echo
echo
echo "Node Info"
echo
kubectl get nodes
