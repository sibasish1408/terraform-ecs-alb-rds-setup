resource "aws_ecs_service" "main" {
  name            = "my-service"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.main.arn
  desired_count   = 2
  launch_type     = "FARGATE"
  network_configuration {
    subnets         = var.subnets
    assign_public_ip = true
    security_groups = [aws_security_group.ecs.id]
  }
  load_balancer {
    target_group_arn = module.alb.target_group_arn
    container_name   = "my-container"
    container_port   = 80
  }
  depends_on = [module.alb]
}

resource "aws_security_group" "ecs" {
  vpc_id = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
