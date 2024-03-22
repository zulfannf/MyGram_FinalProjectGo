package router

import (
	"mygram_finalprojectgo/controllers"
	"mygram_finalprojectgo/midleware"

	"github.com/gin-gonic/gin"
)

func StartApp() *gin.Engine {
	r := gin.Default()

	userRouter := r.Group("/users")
	{
		userRouter.POST("/register", controllers.UserRegister)

		userRouter.POST("/login", controllers.UserLogin)
	}

	photoRouter := r.Group("/photos")
	{
		photoRouter.Use(midleware.Authentication())
		photoRouter.POST("/", controllers.CreatePhoto)
	}

	return r
}