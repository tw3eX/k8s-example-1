
#original chart from http://storage.googleapis.com/kubernetes-charts-incubator
#install heml cart

	cd etcd-chart
	helm install --name global-etcd .

#delete heml cart

	helm del --purge global-etcd;

