# Generated by Django 4.0 on 2022-09-25 14:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('tms', '0003_rename_vehicle_car_remove_notification_user_revoker_and_more'),
    ]

    operations = [
        migrations.RenameField(
            model_name='car',
            old_name='name',
            new_name='car_model',
        ),
        migrations.AddField(
            model_name='car',
            name='color',
            field=models.CharField(max_length=30, null=True),
        ),
        migrations.AddField(
            model_name='car',
            name='propulsion_type',
            field=models.CharField(max_length=30, null=True),
        ),
    ]