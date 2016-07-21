template "stack.json" do
  source "stack.json.erb"
  variables(
    instances: [{
      "app1": {
        description: "tomcat",
        HostName: "lad01",
        role: "App",
        AZ: "A",
        RootVolumeSize: "8",
        type: "t2.micro",
        InstanceProfile: "Ec2-Role",
        AdditionalVolumes: [
          device: "/dev/xvdb",
             size: 10,
             mount_point: "/data/local/tomcat"
        ]
      }
    }]
  )
end
