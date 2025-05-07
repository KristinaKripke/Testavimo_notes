TC requirements: 
    1. ID
    2. Summary/Title
    3. Steps
    4. Expected result
    5. Actual result
    6. Status


Test Scenarios:

* TS01 Create task
    * TC01.1 Create new task
    * TC01.2 Create new task with whitespace only
    * TC01.3 Create new task without content

* TS02 Edit task
    * TC02.1 Change name of active task
    * TC02.2 Change name of completed task
    * TC02.3 Change task status to completed
    * TC02.4 Change task status to active
    * TC02.5 Change all task statuses as completed
    * TC02.6 Change all task statuses as active

* TS03 Delete task
    * TC03.1 Delete one task by clicking cross button
    * TC03.2 Delete one task by deleting content
    * TC03.3 'Clear' all completed tasks

* TS04 Filter tasks
    * TC04.01 Display 'All' tasks
    * TC04.02 Display 'active' tasks
    * TC04.03 Display 'Completed' tasks

* TS05 Item count
    * TC05.1 Active task counting

* TS06 UI/UX
    TC06.1 UI/ UX issues:
        1. Placeholder visible on 2nd task creation:
            Actual result: Placeholder disappear when creating 2 task continuously
        2. Spelling mistakes
        3. Font-size and type (letter casing)
        4. Coloring
        5. Shapes and forms
        6. Overlapping (responsive design)
