<!----------------------------------------------------------------------------------------------------------------
--
#Original Author:  Luke Brandt                                  #
#Date Created:   05/04/2021                                  #
#Version:1.0                                                #
#Date Last Modified: 05/04/2021                           #
#Modified by:  Luke Brandt                                        #
#Modification log:                                  #
 --


------------------------------------------------------------------------------------------------------------------>
<template>
    <div class="container-fluid p-4">
        <h1>College of Western Idaho</h1>
        <h3>Graduating 2022. More classes to be added</h3>
        <table class="table table-striped">
            <thead class="thead-dark">
                <tr>
                   <th scope="col">COURSE</th>
                   <th scope="col">FOCUS</th>
                   <th scope="col">INSTRUCTOR</th>   
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Introduction to Programming</td>
                    <td>C#</td>
                    <td>Elisa Lowenstein</td>
                </tr>
                <tr>
                    <td>Intermediate Programming</td>
                    <td>C#</td>
                    <td>Elisa Lowenstein</td>
                </tr>
                <tr>
                    <td>Intro to Web Application Development</td>
                    <td>HTML5/CSS3</td>
                    <td>Elisa Lowenstein</td>
                </tr>
                <tr>
                    <td>Web Styling</td>
                    <td>Bootstrap/SASS</td>
                    <td>Elisa Lowenstein</td>
                </tr>
                <tr>
                    <td>Intermediate Web Application Development</td>
                    <td>JavaScript/Jquery</td>
                    <td>Rick Del Vecchio</td>
                </tr>
                <tr>
                    <td>Client Side Frameworks</td>
                    <td>JavaScript/Vue/React</td>
                    <td>Rick Del Vecchio</td>
                </tr>
                <tr>
                    <td>Systems Analysis and Design</td>
                    <td>Software Development Life Cycle/Agile Development</td>
                    <td>Rick Del Vecchio</td>
                </tr>
            </tbody>
        </table>
    </div>
</template>

<script>
export default {
  name: "table",
  props: {
    msg: String,
  },
};
</script>
