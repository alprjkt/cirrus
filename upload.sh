if [ -f ~/rom/out/target/product/ginkgo/Arrow*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/ginkgo/ && ls Arrow*.zip)"
      rclone copy ~/rom/out/target/product/ginkgo/Arrow*.zip rom:rom -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/ginkgo/ && ls Arrow*.zip) Uploaded Successfully!"
fi
