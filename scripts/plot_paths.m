% Plot waypoints and the robot path for different lookAheadDistance values
plot(pose_2_5(:,1), pose_2_5(:,2));
hold on
plot(pose_5(:,1), pose_5(:,2));

wpts_withStart = [pose_5(1,:); waypoints];
plot(wpts_withStart(:,1), wpts_withStart(:, 2), "*");
plot(wpts_withStart(:,1), wpts_withStart(:, 2), "--");
legend("lookAheadDistance=2.5", "lookAheadDistance=5", "waypoints", "planned path");
title("controller performance for different lookAheadDistance values")
xlabel("x (m)");
ylabel("y (m)");
hold off