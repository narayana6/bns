yum update -y
hostnamectl set-hostname cicdserver
exec bash
yum install wget vim tar make unzip -y 
yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel -y
yum install gcc perl-ExtUtils-MakeMaker -y
cd  /opt 
wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.45.2.tar.gz
ll 
tar -xvf git-2.45.2.tar.gz
ll 
#output
		git-2.45.2
		git-2.45.2.tar.gz
cd git-2.45.2
make prefix=/usr/local/git all 
make prefix=/usr/local/git install 

vim ~/.bashrc
# apply i button  to insert below statement in end of the document 
export PATH=$PATH:/usr/local/git/bin 

#now save and exit by :wq 
#now apply below command to update file 

source ~/.bashrc
git --version 




git --version <-- to see/check the git installed version in present working machine/server 

git clone  <-- this command used for to get the repository from remote local git machine/server 

Syntax:
  git clone git-hub-repository_URL

Example:
  git clone git@github.com:US-Devops-Practice/Git_Linux_Practice.git

ll <-- to list all files and directories in long list format in linux present working directory 

cd Git_Linux_Practice
ll 
git status <-- this command used for to list all files from working directory and staging area. 


Note: all working directory files in red color ,
      all staged files in green color.

Note: Committed files will not respond to git status command. 


In working directory:directory
   

   modified files
   deleted files 
   untracked files 

in Staging Area: 

  modified files
  deleted files 
  new files 


-------------------------------------
to add the files from working to staging
-----------------------------------------

Syntax:
git add file-name   <-- by this command we can add only one file at a time.
Example:

git add file1



Syntax:
git add file-name file-name .. nth file-name  <-- by this format we can add one or more files at a time  
Example:

git add file1 file2




Syntax:

git add . <-- by this command we can all files at a time. 
Example:


git add . 


Syntax:
git add * <-- by this command we can add only normal and normal directories (except hidden files and hidden directories)
Example:

git add * 



Syntax:
git add --all <-- by this command we can add all files at a time  

Example:

git add --all 





Syntax:
git add -A <-- by this command we can add all files at a time  

Example:

git add -A



pattren Files:

for Example:

touch a1 b2 bb cd abc hello hi god got go pie sun sat sit tap toy 

git add a* c* s*


-------------
git stage file-name
git stage file-name file-name .. nth file-name
git stage .   <-- to add all files 
git stage *  <-- to add normal files only 
git stage --all <-- to add all files 
git stage -A <-- to add all files 
git stage a* c* s* <-- to add all files 
git stage H* S* B*  <-- to add all files 




--------------------------------------------------------
git reset <-- this command used for to unstage/recall from staging to working directory

Syntax 1:

git reset file-name

Example:

git reset ruby 




Syntax 2:

git reset file-name file-name.. nth file-name

Example:

git reset python java 





Syntax 3:

git reset    <-- by this command we can reset all files at a time 

Example:

git reset




Syntax 4:

git reset .  <-- by this command we can reset all files at a time 

Example:

git reset . 




Syntax 5:

git reset *   <-- BY this command we reset only normal files and normal directories(except hidden files and hidden directories)

Example:

gitr reset *




git reset t* c* s*   



-----------------------------------------
git config --global user.name "Cloud Gen"
git config --global user.email "support@cloudgensoft.com"


git commit : <-- this command used for to send the file/files from staging to commtting area. 


Note: you should have the files in staging area for applying time this command

Syntax 1:

git commit -m "message" file-name 

Example: 

 git commit -m "test commit " pie
[main 304071e] test commit
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 pie




Syntax 2:

git commit -m "message" file-name  file-name .. nth file-name

Example: 

git commit -m "message" a1 abc python
[main 32c72fd] message
 3 files changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 a1
 create mode 100644 abc
 create mode 100644 python






Syntax 3:

this command used for to commit all files at a time. 

Note: if you are not adding any one or more files after "   " 

Note: by below command we are committing/ or that command will do on only staged files 


git commit -m "message" 

Example: 


 git commit -m "Test commit"
[main cae69cb] Test commit
 3 files changed, 39 insertions(+)
 create mode 100644 anaconda-ks.cfg
 create mode 100644 ansible
 create mode 100644 package-management.sh



--------------------------------------------

Syntax 4:

git commit -am <-- by this command we can commit directly from working directory to commtting area.


it works towards ---> left to right 

it stats at working directory --> and moves to staging --> ends at commtting area 

Note:
 we can't' commit untracked files by above command 

Note: by above command we can commit all modified and deleted files from working directory along with all staged files 



------------------------------------------

git show <-- this command used for to list / to see the latest Committed files in commtting area. 

------------------------

git reset --soft HEAD~
by this command we can uncommit the changes from commtting to staging.


----------------------------

git reset @~a
by this command we can uncommit and unstage all at a time  


------------------------

git diff 

this command used for to see the differneces in between working & staging ,  and working & commtting, and but not possible to see inbetween staging and commtting

Note: by this command we can't' see on individual location(s).


--------------------------------------------------------

git branch 

***********************

git branch  <-- this command used for to list all existed branches

Example:

[root@gitserver 8PM-DevOps-Batch]# git branch
* main

[root@gitserver 8PM-DevOps-Batch]#



--------------------------

# Create a new Branch:

Syntax:

git branch branch-name <-- this command used for to create a new branch 

Example:

[root@gitserver 8PM-DevOps-Batch]# git branch dev
[root@gitserver 8PM-DevOps-Batch]# git branch
  dev
* main
[root@gitserver 8PM-DevOps-Batch]# git branch prod
[root@gitserver 8PM-DevOps-Batch]# git branch
  dev
* main
  prod
[root@gitserver 8PM-DevOps-Batch]#



-----------------------------------------------------
git branch -m old-branch new-branch <-- this command used forto rename a existed branch 


[root@gitserver 8PM-DevOps-Batch]# git branch abcd

[root@gitserver 8PM-DevOps-Batch]# git branch
  abcd
  dev
* main
  prod

[root@gitserver 8PM-DevOps-Batch]# git branch -m abcd test

[root@gitserver 8PM-DevOps-Batch]# git branch
  dev
* main
  prod
  test

[root@gitserver 8PM-DevOps-Batch]#


-----------------------------------------------------
git brach -d branch-name <-- this command used for to delete a existed branch

[root@gitserver 8PM-DevOps-Batch]# git branch
  dev
* main
  prod
  test


[root@gitserver 8PM-DevOps-Batch]# git branch -d test
Deleted branch test (was b462e4a).


[root@gitserver 8PM-DevOps-Batch]# git branch
  dev
* main
  prod


[root@gitserver 8PM-DevOps-Batch]#

-----------------------------------------------------
git checkout branch-name   <-- this command used for to switch one branch to another brach.

[root@gitserver 8PM-DevOps-Batch]# git branch
  dev
* main
  prod


[root@gitserver 8PM-DevOps-Batch]# git checkout prod
D       66
D       77
M       git-install.sh
Switched to branch 'prod'


[root@gitserver 8PM-DevOps-Batch]# git branch
  dev
  main
* prod
[root@gitserver 8PM-DevOps-Batch]#



-----------------------------------------------------
git checkout -b new-branch-name(which is not existed)  <-- by this command we can create new branch switch into that brach. 

[root@gitserver 8PM-DevOps-Batch]# git branch
  main
* prod

[root@gitserver 8PM-DevOps-Batch]# git checkout -b product
Switched to a new branch 'product'


[root@gitserver 8PM-DevOps-Batch]# git branch
  main
  prod
* product
[root@gitserver 8PM-DevOps-Batch]#




-----------------------------------------------------
