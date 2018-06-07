package;

import kha.System;
import kha.Scheduler;

class Main {
	public static function main() {
		System.init({title: "Project", width: 1024, height: 768}, function () {
			trace("init?");
			var Project = new Project();

			System.notifyOnRender(Project.render);
			Scheduler.addTimeTask(Project.update, 0, 1 / 60);
		});
	}
}
