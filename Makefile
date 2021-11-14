VM_NAME = primary
VERSION = 20.04

launch:
	multipass launch -n $(VM_NAME) \
	--cpus 3 --mem 4G --disk 10G \
	--cloud-init cloud-config.yaml -vvvv \
	$(VERSION)

clean:
	multipass stop $(VM_NAME)
	multipass delete $(VM_NAME)
