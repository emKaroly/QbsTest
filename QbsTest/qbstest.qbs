import qbs 1.0
import qbs.Environment

Project {
    name: "QbsTest"

    minimumQbsVersion: "1.8"

    references: [
        "src/src.qbs"
   ]
}
