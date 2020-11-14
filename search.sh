#!/bin/bash

search(){
	
	find /home -name "*.$1"  
}
search $1
