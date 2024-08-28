resource "aws_lb_target_group" "front_end" {
    name = "tf-front_end-lb-tg"
    port = 80
    protocol = "HTTP"
    VPC_id =  aws_vpc.my vpc_id.
  depends_on = [ aws_vpc.my vpc]

} 
resource "aws_lb" "front_end" {
 name ="tf-front-end-alb"
 internal = false
 load_balancer_type = "application"
 security_groups = [aws_security_group.alb -front_end-sg.id]
 subnets = [aws_subnet.pub1.id,aws_subnet.pub2.id]
 depends_on = [ aws_lb_target_group.front_end ]
 tags = {
name ="ALB-backend"

 }

}

