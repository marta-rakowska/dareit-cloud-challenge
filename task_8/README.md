# Task 8️⃣

The goal of the task was to apply all the knowledge gathered during the challenge to deploy a simple website.
 
## Sources:
 
For the task I used the "Wine Festival Schedule" project that I created as a part of "Learn HTML" course at Codecademy.
 
## Requirements of the task:
 
:small_orange_diamond: Deliver the tooling to set up an application that displays a web page with text and an image.
:small_orange_diamond: Provide source code for creating the stack in a publicly available repository.
:small_orange_diamond: Provide basic setup documentation to run the application.
:small_orange_diamond: All resources should be deployed using Terraform.
:small_orange_diamond: Automate the deployment of your appplication using CI/CD.
 
## Solution:
 
You can find the source code of the task in this folder. The source code of the website is located in the "website" subfolder.
 
## Build status:
 
For now the task solution is simple but in the future I would like to create other versions using single VM, App Engine, two VMs behind a Load Balancer and Kubernetes cluster.
 
## Pre-requisites:
 
:heavy_check_mark: GCP account
:heavy_check_mark: GutHub account
 
### How to run the application?
 
To run the application:
1. Clone the repository to your computer.
2. Create a Service Account for Terraform in GCP and generate a key for this Service Account in json format.
3. Create a bucket in GCP where you will store the Terraform state file (don't grant public access to it!).
4. Create a new repository in GitHub and a new repository secret for it (use json key generated in step 2).
5. Change the bucket name in backend.tf to the name of the bucket created in step 3.
6. Change the project name in provider.tf to your project name.
7. Change the bucket name in main.tf to your bucket name.
8. Change TF_GOOGLE_CREDENTIALS to the name of the repository secret created in setp 4.
9. Commit all files to the repository and push the change to the remote repository.
10. Go to GitHub and check the Actions tab in your repository.
 
You can find the output of the test deployment of the task here: <link>
 
It works on my machine :satisfied:
 
## Bonus:
 
:small_blue_diamond: Provide and document a mechanism for scaling the service and delivering the content to a larger audience.
:small_blue_diamond: Demonstrate that you have considered how a real-world solution will be hosted and scaled.
:small_blue_diamond: Explain your choices.
 
## Bonus solution:
 
Work in progress... :woman_technologist:
 
The final solution isn't ready but you can find a partial solution below 🚧
 
For scaling the service and delivering the content to larger audience I would use Cloud Load Balancer. It can distribute users among multiple servers. If the number of visitors grows, the balancer autoscales resources. Moreover, it can direct users to specific servers based on their geographical location.
 
As my static website contains the wine festival schedule I suppose that the load balancer will be very useful right before the event. A lot of people will want to check the schedule at the same time and the number of visitors will grow significantly.
 
Load balancer can be set up in Network sevices -> Load balancing. It is also possible to set it up using Terraform.
 
## Bonus 2:
 
Create Cloud Function that lists all VPCs and Subnets in the project and saves the data in a file that is stored in a bucket OR saves the data in the database.
 
Requirements:
 
:small_orange_diamond:Provide source code for the function and any other code in a publicly available repository.
 
## Bonus 2 solution:
 
Work in progress... :woman_technologist: