if [ -f ~/rom/out/target/product/ginkgo/XdCLO*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/ginkgo/ && ls XdCLO*.zip)"
      rclone copy ~/rom/out/target/product/ysl/XdCLO*.zip rom:rom -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/ginkgo/ && ls XdCLO*.zip) Uploaded Successfully!"
fi
