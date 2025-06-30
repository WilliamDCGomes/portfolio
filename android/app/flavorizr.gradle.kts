import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("dev") {
            dimension = "flavor-type"
            applicationId = "com.williamdouglas.portifolio_william_douglas_dev"
            resValue(type = "string", name = "app_name", value = "Portifólio - William Douglas DEV")
        }
        create("qa") {
            dimension = "flavor-type"
            applicationId = "com.williamdouglas.portifolio_william_douglas_qa"
            resValue(type = "string", name = "app_name", value = "Portifólio - William Douglas QA")
        }
        create("prod") {
            dimension = "flavor-type"
            applicationId = "com.williamdouglas.portifolio_william_douglas"
            resValue(type = "string", name = "app_name", value = "Portifólio - William Douglas")
        }
    }
}